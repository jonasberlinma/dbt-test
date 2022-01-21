with table1 as (

    select
        MOVEGAMEID,
        count(GAMESTEP) as the_count
    from TRAININGSTAGE
    group by 1
),

table2 as (

    select
        MOVEGAMEID,
        count(GAMESTEP) as STEPS

    from TRAININGSTAGE
    group by 1

),


final as (

    select
        table1.MOVEGAMEID,
        table2.STEPS
    from table1

    left join table2 using (MOVEGAMEID)

)

select * from final
