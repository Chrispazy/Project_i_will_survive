with 

source as (

    select * from {{ source('project_i_will_survive', 'diabete_stats') }}

),

renamed as (

    select
        dataflow,
        last update,
        freq,
        unit,
        hlth_pb,
        age,
        sex,
        geo,
        time_period,
        obs_value,
        obs_flag

    from source

)

select * from renamed
