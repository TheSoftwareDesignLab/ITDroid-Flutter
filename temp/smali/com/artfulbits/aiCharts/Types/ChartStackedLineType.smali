.class public Lcom/artfulbits/aiCharts/Types/ChartStackedLineType;
.super Lcom/artfulbits/aiCharts/Types/ChartLineType;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/artfulbits/aiCharts/Types/ChartLineType;-><init>()V

    iget v0, p0, Lcom/artfulbits/aiCharts/Types/ChartStackedLineType;->m_flags:I

    sget v1, Lcom/artfulbits/aiCharts/Types/ChartStackedLineType;->FLAG_STACKED:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/artfulbits/aiCharts/Types/ChartStackedLineType;->m_flags:I

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "StackedLine"

    return-object v0
.end method
