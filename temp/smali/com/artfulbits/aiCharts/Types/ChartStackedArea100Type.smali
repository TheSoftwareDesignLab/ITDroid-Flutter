.class public Lcom/artfulbits/aiCharts/Types/ChartStackedArea100Type;
.super Lcom/artfulbits/aiCharts/Types/ChartStackedAreaType;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/artfulbits/aiCharts/Types/ChartStackedAreaType;-><init>()V

    iget v0, p0, Lcom/artfulbits/aiCharts/Types/ChartStackedArea100Type;->m_flags:I

    sget v1, Lcom/artfulbits/aiCharts/Types/ChartStackedArea100Type;->FLAG_STACKED_100:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/artfulbits/aiCharts/Types/ChartStackedArea100Type;->m_flags:I

    return-void
.end method


# virtual methods
.method public getYRange(Lcom/artfulbits/aiCharts/Base/ChartSeries;Lcom/artfulbits/aiCharts/Base/DoubleRange;)V
    .locals 4

    const-wide/16 v0, 0x0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    invoke-virtual {p2, v0, v1, v2, v3}, Lcom/artfulbits/aiCharts/Base/DoubleRange;->set(DD)V

    return-void
.end method
