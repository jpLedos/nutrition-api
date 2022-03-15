<?php
// src/DataPersister/UserDataPersister.php

namespace App\DataPersister;

use App\Entity\Recipe;
use App\Entity\Category;
use App\Entity\Allergen;
use Doctrine\ORM\EntityManagerInterface;
use ApiPlatform\Core\DataPersister\ContextAwareDataPersisterInterface;


/**
 *
 */
class RecipeDataPersister implements ContextAwareDataPersisterInterface
{
    private $_entityManager;


    public function __construct(
        EntityManagerInterface $entityManager,
 
    ) {
        $this->_entityManager = $entityManager;
    }

    /**
     * {@inheritdoc}
     */
    public function supports($data, array $context = []): bool
    {
        return $data instanceof Recipe;
    }

    /**
     * @param Recipe $data
     */
    public function persist($data, array $context = [])
    {

        //categories management
        $categoryRepository = $this->_entityManager->getRepository(Category::class);

        foreach ($data->getCategories() as $category) {
            $c = $categoryRepository->findOneByTitle($category->getTitle());

            // if the category exists, don't persist it
            if ($c !== null) {
                $data->removeCategory($category);
                $data->addCategory($c);
            } else {
                $this->_entityManager->persist($category);
            }
        }


        //allergens management
    $allergenRepository = $this->_entityManager->getRepository(Allergen::class);

    foreach ($data->getAllergens() as $allergen) {
        $a = $allergenRepository->findOneByTitle($allergen->getTitle());

        // if the allergen exists, don't persist it
        if ($a !== null) {
            $data->removeAllergen($allergen);
            $data->addAllergen($a);
        } else {
            $this->_entityManager->persist($allergen);
        }
    }

        $this->_entityManager->persist($data);
        $this->_entityManager->flush();
    }

    /**
     * {@inheritdoc}
     */
    public function remove($data, array $context = [])
    {
        $this->_entityManager->remove($data);
        $this->_entityManager->flush();
    }
}