.class final Lcom/artfulbits/aiCharts/Base/h;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/artfulbits/aiCharts/Base/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/artfulbits/aiCharts/Base/ChartLegend;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/artfulbits/aiCharts/Base/ChartLegend;


# direct methods
.method constructor <init>(Lcom/artfulbits/aiCharts/Base/ChartLegend;)V
    .locals 0

    iput-object p1, p0, Lcom/artfulbits/aiCharts/Base/h;->a:Lcom/artfulbits/aiCharts/Base/ChartLegend;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/h;->a:Lcom/artfulbits/aiCharts/Base/ChartLegend;

    invoke-static {v0}, Lcom/artfulbits/aiCharts/Base/ChartLegend;->a(Lcom/artfulbits/aiCharts/Base/ChartLegend;)Lcom/artfulbits/aiCharts/Base/ChartLegendAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/artfulbits/aiCharts/Base/ChartLegendAdapter;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/h;->a:Lcom/artfulbits/aiCharts/Base/ChartLegend;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/artfulbits/aiCharts/Base/ChartLegend;->a(Lcom/artfulbits/aiCharts/Base/ChartLegend;Ljava/util/List;)Ljava/util/List;

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/h;->a:Lcom/artfulbits/aiCharts/Base/ChartLegend;

    iget-object v0, v0, Lcom/artfulbits/aiCharts/Base/ChartLegend;->m_chart:Lcom/artfulbits/aiCharts/Base/ChartEngine;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/artfulbits/aiCharts/Base/ChartEngine;->invalidate(I)V

    :cond_0
    return-void
.end method
