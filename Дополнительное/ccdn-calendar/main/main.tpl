<style>
    .ccdn_calendar,
    .ccdn_calendar-day,
    .ccdn_calendar-item,
    .ccdn_calendar-item a {
        display: block;
        width: 100%;
    }

    .ccdn_calendar-day .ccdn_calendar-wrapper_items {
        overflow-y: auto;
        height: {ccdn_calendar_wrapper_weight};
        border: 1px solid #0e90d2;
    }
</style>
<div class="ccdn_calendar">
    {ccdn_calendar_days}
</div>