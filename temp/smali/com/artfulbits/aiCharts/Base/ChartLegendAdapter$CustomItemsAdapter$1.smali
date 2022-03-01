.class final Lcom/artfulbits/aiCharts/Base/ChartLegendAdapter$CustomItemsAdapter$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/artfulbits/aiCharts/Base/ChartCollection$IChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/artfulbits/aiCharts/Base/ChartLegendAdapter$CustomItemsAdapter;-><init>(Ljava/util/Collection;Lcom/artfulbits/aiCharts/Base/IItemBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/artfulbits/aiCharts/Base/ChartCollection$IChangeListener",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/artfulbits/aiCharts/Base/ChartLegendAdapter$CustomItemsAdapter;


# direct methods
.method constructor <init>(Lcom/artfulbits/aiCharts/Base/ChartLegendAdapter$CustomItemsAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartLegendAdapter$CustomItemsAdapter$1;->a:Lcom/artfulbits/aiCharts/Base/ChartLegendAdapter$CustomItemsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartLegendAdapter$CustomItemsAdapter$1;->a:Lcom/artfulbits/aiCharts/Base/ChartLegendAdapter$CustomItemsAdapter;

    iget-object v0, v0, Lcom/artfulbits/aiCharts/Base/ChartLegendAdapter$CustomItemsAdapter;->m_legend:Lcom/artfulbits/aiCharts/Base/ChartLegend;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartLegendAdapter$CustomItemsAdapter$1;->a:Lcom/artfulbits/aiCharts/Base/ChartLegendAdapter$CustomItemsAdapter;

    iget-object v0, v0, Lcom/artfulbits/aiCharts/Base/ChartLegendAdapter$CustomItemsAdapter;->m_legend:Lcom/artfulbits/aiCharts/Base/ChartLegend;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/artfulbits/aiCharts/Base/ChartLegend;->invalidateChart(Z)V

    :cond_0
    return-void
.end method
