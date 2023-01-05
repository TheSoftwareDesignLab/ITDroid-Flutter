.class public Lcom/artfulbits/aiCharts/Types/ChartStackedBar100Type;
.super Lcom/artfulbits/aiCharts/Types/ChartStackedBarType;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/artfulbits/aiCharts/Types/ChartStackedBarType;-><init>()V

    iget v0, p0, Lcom/artfulbits/aiCharts/Types/ChartStackedBar100Type;->m_flags:I

    sget v1, Lcom/artfulbits/aiCharts/Types/ChartStackedBar100Type;->FLAG_STACKED_100:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/artfulbits/aiCharts/Types/ChartStackedBar100Type;->m_flags:I

    return-void
.end method
