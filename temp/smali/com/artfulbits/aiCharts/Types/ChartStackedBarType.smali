.class public Lcom/artfulbits/aiCharts/Types/ChartStackedBarType;
.super Lcom/artfulbits/aiCharts/Types/ChartStackedColumnType;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/artfulbits/aiCharts/Types/ChartStackedColumnType;-><init>()V

    iget v0, p0, Lcom/artfulbits/aiCharts/Types/ChartStackedBarType;->m_flags:I

    sget v1, Lcom/artfulbits/aiCharts/Types/ChartStackedBarType;->FLAG_ROTATED:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/artfulbits/aiCharts/Types/ChartStackedBarType;->m_flags:I

    return-void
.end method
