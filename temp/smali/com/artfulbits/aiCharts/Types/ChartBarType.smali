.class public Lcom/artfulbits/aiCharts/Types/ChartBarType;
.super Lcom/artfulbits/aiCharts/Types/ChartColumnType;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/artfulbits/aiCharts/Types/ChartColumnType;-><init>()V

    iget v0, p0, Lcom/artfulbits/aiCharts/Types/ChartBarType;->m_flags:I

    sget v1, Lcom/artfulbits/aiCharts/Types/ChartBarType;->FLAG_ROTATED:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/artfulbits/aiCharts/Types/ChartBarType;->m_flags:I

    return-void
.end method
