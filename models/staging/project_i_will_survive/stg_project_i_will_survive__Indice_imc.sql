with 

source as (

    select * from {{ source('project_i_will_survive', 'Indice_imc') }}

),

renamed as (

    select
        dataflow,
        last update,
        freq,
        unit,
        bmi,
        sex,
        age,
        c_birth,
        geo,
        time_period,
        obs_value,
        obs_flag

    from source

)

select * from renamed