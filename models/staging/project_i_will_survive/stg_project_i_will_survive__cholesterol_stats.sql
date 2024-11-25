with 

source as (

    select * from {{ source('project_i_will_survive', 'cholesterol_stats') }}

),

renamed as (

    select
        dataflow,
        last update,
        freq,
        duration,
        hlthcare,
        sex,
        age,
        quant_inc,
        unit,
        geo,
        time_period,
        obs_value,
        obs_flag

    from source

)

select * from renamed
