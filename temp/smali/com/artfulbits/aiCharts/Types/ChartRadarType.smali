.class public Lcom/artfulbits/aiCharts/Types/ChartRadarType;
.super Lcom/artfulbits/aiCharts/Types/ChartPolarType;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/artfulbits/aiCharts/Types/ChartPolarType;-><init>()V

    sget v0, Lcom/artfulbits/aiCharts/Types/ChartRadarType;->FLAG_INDEXED:I

    iput v0, p0, Lcom/artfulbits/aiCharts/Types/ChartRadarType;->m_flags:I

    return-void
.end method
