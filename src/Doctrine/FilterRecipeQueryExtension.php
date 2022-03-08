<?php

namespace App\Doctrine;

use ApiPlatform\Core\Bridge\Doctrine\Orm\Extension\QueryCollectionExtensionInterface;
use ApiPlatform\Core\Bridge\Doctrine\Orm\Extension\QueryItemExtensionInterface;
use ApiPlatform\Core\Bridge\Doctrine\Orm\Util\QueryNameGeneratorInterface;
use App\Entity\Recipe;
use Doctrine\ORM\QueryBuilder;

class FilterPublishedCommentQueryExtension implements QueryCollectionExtensionInterface, QueryItemExtensionInterface
{
    public function applyToCollection(  QueryBuilder $qb, 
                                        QueryNameGeneratorInterface $queryNameGenerator, 
                                        string $resourceClass, 
                                        string $operationName = null)
    {
        if (Recipe::class === $resourceClass) {
            $alias = $qb->getRootAliases()[0];
            $qb->andWhere(sprintf('%s.isPublished = :isPublished', $alias))
            ->setParameter('isPublished', true);
        }

        dd('on passe par collection');
    }

    public function applyToItem(QueryBuilder $qb, 
                                QueryNameGeneratorInterface $queryNameGenerator, 
                                string $resourceClass, 
                                array $identifiers, 
                                string $operationName = null, 
                                array $context = [])
    {
        
                dd($queryNameGenerator);                
        if (Recipe::class === $resourceClass) {
            $alias = $qb->getRootAliases()[0];
            $qb
            ->andWhere('$alias.isPublished = true');
            
        }


    }
}