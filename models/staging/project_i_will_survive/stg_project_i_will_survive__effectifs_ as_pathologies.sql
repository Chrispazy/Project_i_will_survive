with 

source as (

    select * from {{ source('project_i_will_survive', 'effectifs_ as_pathologies') }}

),

renamed as (

    select
        annee,
        patho_niv1,
        patho_niv2,
        patho_niv3,
        top,
        cla_age_5,
        sexe,
        region,
        dept,
        ntop,
        npop,
        prev,
        niveau prioritaire,
        libelle_classe_age,
        libelle_sexe,
        tri

    from source

)

select * from renamed
