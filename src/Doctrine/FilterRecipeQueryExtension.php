<?php

namespace App\Doctrine;

use ApiPlatform\Core\Bridge\Doctrine\Orm\Extension\QueryCollectionExtensionInterface;
use ApiPlatform\Core\Bridge\Doctrine\Orm\Extension\QueryItemExtensionInterface;
use ApiPlatform\Core\Bridge\Doctrine\Orm\Util\QueryNameGeneratorInterface;
use App\Entity\Recipe;
use Doctrine\ORM\QueryBuilder;
use Symfony\Component\Security\Core\Security;

class FilterRecipeQueryExtension implements QueryCollectionExtensionInterface
{
    private $security;

    public function __construct(Security $security)
    {
        $this->security = $security;
    }


    public function applyToCollection(  QueryBuilder $queryBuilder, 
                                        QueryNameGeneratorInterface $queryNameGenerator, 
                                        string $resourceClass, 
                                        string $operationName = null)
    {

        $rootAlias  = $queryBuilder->getRootAliases()[0];   
        if ($resourceClass === Recipe::class ) {
            if($this->security->isGranted('ROLE_ADMIN')) {  
                
                return;
            
            } else if  ($this->security->isGranted('ROLE_USER')) {
                $queryBuilder
                ->andWhere(sprintf('%s.isPublished = :isPublished', $rootAlias ))
                ->setParameter('isPublished', true);
           
            } else {
                $queryBuilder
                ->andWhere(sprintf('%s.isPublished = true', $rootAlias ))
                ->andWhere(sprintf('%s.isPublic = true', $rootAlias ));
            }
        }
    }
}