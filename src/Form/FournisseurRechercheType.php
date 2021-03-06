<?php

namespace App\Form;

use App\Entity\FournisseurRecherche;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\Extension\Core\Type\DateType;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;

class FournisseurRechercheType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            ->add('nom', TextType::class, ['label' => 'Nom', 'required' => false,])
            ->add('dateMini', DateType::class, ['widget' => 'single_text', 'label' => 'Date minimum', 'required' => false])
            ->add('dateMaxi', DateType::class, ['widget' => 'single_text', 'label' => 'Date maximum', 'required' => false]);
    }

    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults([
            'data_class' => FournisseurRecherche::class,
        ]);
    }
}
