with 

source as (

    select * from {{ source('raw', 'imc') }}

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
