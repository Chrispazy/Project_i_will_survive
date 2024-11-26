with 

source as (

    select * from {{ source('raw', 'comorbidites') }}

),

renamed as (

    select
        annee,
        patho_niv1,
        patho_niv2,
        patho_niv3,
        top,
        comorbidite,
        libelle_comorbidite,
        region,
        dept,
        ncomorb,
        ntop,
        proportion_comorb,
        patho_niv2_comorb,
        patho_niv3_comorb,
        patho_niv1_comorb,
        niveau prioritaire

    from source

)

select * from renamed
