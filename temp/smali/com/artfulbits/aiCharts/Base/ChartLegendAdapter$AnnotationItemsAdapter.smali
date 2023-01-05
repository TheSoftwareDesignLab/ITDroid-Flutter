.class public final Lcom/artfulbits/aiCharts/Base/ChartLegendAdapter$AnnotationItemsAdapter;
.super Lcom/artfulbits/aiCharts/Base/ChartLegendAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/artfulbits/aiCharts/Base/ChartLegendAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AnnotationItemsAdapter"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcom/artfulbits/aiCharts/Base/ChartLegendItemsBinder;->a:Lcom/artfulbits/aiCharts/Base/ChartLegendItemsBinder;

    invoke-direct {p0, v0}, Lcom/artfulbits/aiCharts/Base/ChartLegendAdapter$AnnotationItemsAdapter;-><init>(Lcom/artfulbits/aiCharts/Base/IItemBinder;)V

    return-void
.end method

.method public constructor <init>(Lcom/artfulbits/aiCharts/Base/IItemBinder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/artfulbits/aiCharts/Base/IItemBinder",
            "<",
            "Lcom/artfulbits/aiCharts/Base/ChartLegendItem;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/artfulbits/aiCharts/Base/ChartLegendAdapter;-><init>(Lcom/artfulbits/aiCharts/Base/IItemBinder;)V

    return-void
.end method


# virtual methods
.method final a(I)Z
    .locals 2

    and-int/lit16 v0, p1, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final getSourceItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartLegendAdapter$AnnotationItemsAdapter;->m_legend:Lcom/artfulbits/aiCharts/Base/ChartLegend;

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartLegend;->getChart()Lcom/artfulbits/aiCharts/Base/ChartEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartEngine;->getAnnotations()Lcom/artfulbits/aiCharts/Base/ChartCollection;

    move-result-object v0

    return-object v0
.end method
