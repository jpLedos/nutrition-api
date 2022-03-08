<?php

namespace App\Doctrine;

use ApiPlatform\Core\Bridge\Doctrine\Orm\Extension\QueryCollectionExtensionInterface;
use ApiPlatform\Core\Bridge\Doctrine\Orm\Extension\QueryItemExtensionInterface;
use ApiPlatform\Core\Bridge\Doctrine\Orm\Util\QueryNameGeneratorInterface;
use App\Entity\Recipe;
use Doctrine\ORM\QueryBuilder;
use Symfony\Component\Security\Core\Security;

class FilterPublishedCommentQueryExtension implements QueryCollectionExtensionInterface, QueryItemExtensionInterface
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
        dd('on passe par collection'+ $this->security->getUser());
        
        if ($resourceClass === Recipe::class ) {
            $rootAlias  = $queryBuilder->getRootAliases()[0];
            $queryBuilder->andWhere(sprintf('%s.isPublished = :isPublished', $rootAlias ))
            ->setParameter('isPublished', true);
        }

        
    }

    public function applyToItem(QueryBuilder $qb, 
                                QueryNameGeneratorInterface $queryNameGenerator, 
                                string $resourceClass, 
                                array $identifiers, 
                                string $operationName = null, 
                                array $context = [])
    {
        
                dd($queryNameGenerator);                


    }
}