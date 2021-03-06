<?php

namespace App\Entity;

use ApiPlatform\Core\Annotation\ApiResource;
use App\Repository\RecipeRepository;
use Doctrine\Common\Collections\ArrayCollection;
use Doctrine\Common\Collections\Collection;
use Doctrine\ORM\Mapping as ORM;
use Symfony\Component\Serializer\Annotation\Groups;
use Symfony\Component\Validator\Constraints as Assert;


#[ORM\Entity(repositoryClass: RecipeRepository::class)]
#[ApiResource(
    normalizationContext: ['groups' => ['recipe:read']],
    itemOperations: [
        'patch' => [
            'denormalization_context' => ['groups' => ['recipe:update']]
        ],
        'delete',
        'get' => [
            'normalization_context' => ['groups' => ['recipe:read']]
        ]
    ] ,
    denormalizationContext: ['groups' => ['recipe:write']] ,
    paginationEnabled: false
)]

class Recipe
{
    #[Groups(["recipe:read"])]
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column(type: 'integer')]
    private $id;

    #[Assert\Length(min : 3 , minMessage : "le titre doit avoir {{ limit }} caractères")]
    #[Groups(["recipe:read", "recipe:write",'recipe:update'])]
    #[ORM\Column(type: 'string', length: 100)]
    private $title;

    #[Groups(["recipe:read", "recipe:write",'recipe:update'])]
    #[ORM\Column(type: 'text')]
    private $description;

    #[Groups(["recipe:read", "recipe:write",'recipe:update'])]
    #[ORM\Column(type: 'string')]
    private $preparationTime;

    #[Groups(["recipe:read", "recipe:write",'recipe:update'])]
    #[ORM\Column(type: 'string')]
    private $timeout;

    #[Groups(["recipe:read", "recipe:write",'recipe:update'])]
    #[ORM\Column(type: 'string')]
    private $cookingTime;

    #[Groups(["recipe:read", "recipe:write",'recipe:update'])]
    #[ORM\Column(type: 'text')]
    private $ingredients;

    #[Groups(["recipe:read", "recipe:write",'recipe:update'])]
    #[ORM\Column(type: 'text')]
    private $steps;

    #[Groups(["recipe:read", "recipe:write",'recipe:update'])]
    #[ORM\ManyToMany(targetEntity: Allergen::class, inversedBy: 'recipes')]
    private $allergens;

    #[Groups(["recipe:read", "recipe:write",'recipe:update'])]
    #[ORM\ManyToMany(targetEntity: Category::class, inversedBy: 'recipes')]
    private $categories;

    #[Groups(["recipe:read", "recipe:write",'recipe:update'])]
    #[ORM\Column(type: 'boolean')]
    private $isPublished=false;

    #[Groups(["recipe:read", "recipe:write",'recipe:update'])]
    #[ORM\Column(type: 'boolean')]
    private $isPublic=false;

    #[Groups(["recipe:read"])]
    #[ORM\OneToMany(mappedBy: 'recipe', targetEntity: Comment::class, orphanRemoval: true)]
    private $comments;

    public function __construct()
    {
        $this->allergens = new ArrayCollection();
        $this->categories = new ArrayCollection();
        $this->comments = new ArrayCollection();
    }

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getTitle(): ?string
    {
        return $this->title;
    }

    public function setTitle(string $title): self
    {
        $this->title = $title;

        return $this;
    }

    public function getDescription(): ?string
    {
        return $this->description;
    }

    public function setDescription(string $description): self
    {
        $this->description = $description;

        return $this;
    }

    public function getPreparationTime(): ?string
    {
        return $this->preparationTime;
    }

    public function setPreparationTime(string $preparationTime): self
    {
        $this->preparationTime = $preparationTime;

        return $this;
    }

    public function getTimeout(): ?string
    {
        return $this->timeout;
    }

    public function setTimeout(string $timeout): self
    {
        $this->timeout = $timeout;

        return $this;
    }

    public function getCookingTime(): ?string
    {
        return $this->cookingTime;
    }

    public function setCookingTime(string $cookingTime): self
    {
        $this->cookingTime = $cookingTime;

        return $this;
    }

    public function getIngredients(): ?string
    {
        return $this->ingredients;
    }

    public function setIngredients(string $ingredients): self
    {
        $this->ingredients = $ingredients;

        return $this;
    }

    public function getSteps(): ?string
    {
        return $this->steps;
    }

    public function setSteps(string $steps): self
    {
        $this->steps = $steps;

        return $this;
    }

    /**
     * @return Collection<int, Allergen>
     */
    public function getAllergens(): Collection
    {
        return $this->allergens;
    }

    public function addAllergen(Allergen $allergen): self
    {
        if (!$this->allergens->contains($allergen)) {
            $this->allergens[] = $allergen;
        }

        return $this;
    }

    public function removeAllergen(Allergen $allergen): self
    {
        $this->allergens->removeElement($allergen);

        return $this;
    }

    /**
     * @return Collection<int, Category>
     */
    public function getCategories(): Collection
    {
        return $this->categories;
    }

    public function addCategory(Category $category): self
    {
        if (!$this->categories->contains($category)) {
            $this->categories[] = $category;
        }

        return $this;
    }

    public function removeCategory(Category $category): self
    {
        $this->categories->removeElement($category);

        return $this;
    }

    public function getIsPublished(): ?bool
    {
        return $this->isPublished;
    }

    public function setIsPublished(bool $isPublished): self
    {
        $this->isPublished = $isPublished;

        return $this;
    }

    public function getIsPublic(): ?bool
    {
        return $this->isPublic;
    }

    public function setIsPublic(bool $isPublic): self
    {
        $this->isPublic = $isPublic;

        return $this;
    }

    /**
     * @return Collection<int, Comment>
     */
    public function getComments(): Collection
    {
        return $this->comments;
    }

    public function addComment(Comment $comment): self
    {
        if (!$this->comments->contains($comment)) {
            $this->comments[] = $comment;
            $comment->setRecipe($this);
        }

        return $this;
    }

    public function removeComment(Comment $comment): self
    {
        if ($this->comments->removeElement($comment)) {
            // set the owning side to null (unless already changed)
            if ($comment->getRecipe() === $this) {
                $comment->setRecipe(null);
            }
        }

        return $this;
    }
}
