.class public final Lcom/artfulbits/aiCharts/Base/ChartPoint;
.super Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;


# static fields
.field protected static final X_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/artfulbits/aiCharts/Base/ChartPoint;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field a:D

.field private b:[D

.field private c:Lcom/artfulbits/aiCharts/Base/ChartSeries;

.field private d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/artfulbits/aiCharts/Base/i;

    invoke-direct {v0}, Lcom/artfulbits/aiCharts/Base/i;-><init>()V

    sput-object v0, Lcom/artfulbits/aiCharts/Base/ChartPoint;->X_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public varargs constructor <init>(D[D)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;-><init>()V

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    iput-wide v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPoint;->a:D

    iput-object v2, p0, Lcom/artfulbits/aiCharts/Base/ChartPoint;->b:[D

    iput-object v2, p0, Lcom/artfulbits/aiCharts/Base/ChartPoint;->c:Lcom/artfulbits/aiCharts/Base/ChartSeries;

    iput-object v2, p0, Lcom/artfulbits/aiCharts/Base/ChartPoint;->d:Ljava/lang/String;

    iput-wide p1, p0, Lcom/artfulbits/aiCharts/Base/ChartPoint;->a:D

    iput-object p3, p0, Lcom/artfulbits/aiCharts/Base/ChartPoint;->b:[D

    return-void
.end method

.method public constructor <init>(Lcom/artfulbits/aiCharts/Base/ChartPoint;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;-><init>(Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;)V

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    iput-wide v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPoint;->a:D

    iput-object v2, p0, Lcom/artfulbits/aiCharts/Base/ChartPoint;->b:[D

    iput-object v2, p0, Lcom/artfulbits/aiCharts/Base/ChartPoint;->c:Lcom/artfulbits/aiCharts/Base/ChartSeries;

    iput-object v2, p0, Lcom/artfulbits/aiCharts/Base/ChartPoint;->d:Ljava/lang/String;

    iget-object v0, p1, Lcom/artfulbits/aiCharts/Base/ChartPoint;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPoint;->d:Ljava/lang/String;

    iget-wide v0, p1, Lcom/artfulbits/aiCharts/Base/ChartPoint;->a:D

    iput-wide v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPoint;->a:D

    iget-object v0, p1, Lcom/artfulbits/aiCharts/Base/ChartPoint;->b:[D

    invoke-virtual {v0}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPoint;->b:[D

    return-void
.end method


# virtual methods
.method public final getAxisLabel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPoint;->d:Ljava/lang/String;

    return-object v0
.end method

.method protected final getChart()Lcom/artfulbits/aiCharts/Base/ChartEngine;
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPoint;->c:Lcom/artfulbits/aiCharts/Base/ChartSeries;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPoint;->c:Lcom/artfulbits/aiCharts/Base/ChartSeries;

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getChart()Lcom/artfulbits/aiCharts/Base/ChartEngine;

    move-result-object v0

    goto :goto_0
.end method

.method public final getFormatedLabel()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getLabel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getLabelFormatInst()Lcom/artfulbits/aiCharts/Base/m;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1, p0}, Lcom/artfulbits/aiCharts/Base/m;->a(Lcom/artfulbits/aiCharts/Base/ChartPoint;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPoint;->c:Lcom/artfulbits/aiCharts/Base/ChartSeries;

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getPointDeclaration()Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration;

    move-result-object v0

    iget v0, v0, Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration;->YValueIndex:I

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartPoint;->b:[D

    aget-wide v0, v1, v0

    invoke-static {v0, v1}, Lcom/artfulbits/aiCharts/Base/m;->a(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected final getLocalBackColor()Ljava/lang/Integer;
    .locals 2

    invoke-super {p0}, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->getLocalBackColor()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartPoint;->c:Lcom/artfulbits/aiCharts/Base/ChartSeries;

    invoke-virtual {v1}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getType()Lcom/artfulbits/aiCharts/Base/ChartType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/artfulbits/aiCharts/Base/ChartType;->colorPerPoint()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPoint;->c:Lcom/artfulbits/aiCharts/Base/ChartSeries;

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getPalette()Lcom/artfulbits/aiCharts/Base/ChartPalette;

    move-result-object v0

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartPoint;->c:Lcom/artfulbits/aiCharts/Base/ChartSeries;

    invoke-virtual {v1}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getPoints()Lcom/artfulbits/aiCharts/Base/ChartPointCollection;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/artfulbits/aiCharts/Base/ChartPointCollection;->indexOf(Lcom/artfulbits/aiCharts/Base/ChartPoint;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/artfulbits/aiCharts/Base/ChartPalette;->getColor(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final getSeries()Lcom/artfulbits/aiCharts/Base/ChartSeries;
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPoint;->c:Lcom/artfulbits/aiCharts/Base/ChartSeries;

    return-object v0
.end method

.method public final getX()D
    .locals 2

    iget-wide v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPoint;->a:D

    return-wide v0
.end method

.method public final getY(I)D
    .locals 2

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPoint;->b:[D

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public final getY()[D
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPoint;->b:[D

    return-object v0
.end method

.method protected final onChanged(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPoint;->c:Lcom/artfulbits/aiCharts/Base/ChartSeries;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPoint;->c:Lcom/artfulbits/aiCharts/Base/ChartSeries;

    invoke-virtual {v0, p1, p2, p3}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->onChanged(ILjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->onChanged(ILjava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final set(DD)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iput-wide p1, p0, Lcom/artfulbits/aiCharts/Base/ChartPoint;->a:D

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPoint;->b:[D

    array-length v0, v0

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPoint;->b:[D

    aput-wide p3, v0, v1

    :goto_0
    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPoint;->c:Lcom/artfulbits/aiCharts/Base/ChartSeries;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPoint;->c:Lcom/artfulbits/aiCharts/Base/ChartSeries;

    invoke-virtual {v0, p0, p0}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->onPointsChanged(Lcom/artfulbits/aiCharts/Base/ChartPoint;Lcom/artfulbits/aiCharts/Base/ChartPoint;)V

    :cond_0
    return-void

    :cond_1
    new-array v0, v2, [D

    aput-wide p3, v0, v1

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPoint;->b:[D

    goto :goto_0
.end method

.method public final setAxisLabel(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartPoint;->d:Ljava/lang/String;

    return-void
.end method

.method protected final setSeries(Lcom/artfulbits/aiCharts/Base/ChartSeries;)V
    .locals 0

    iput-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartPoint;->c:Lcom/artfulbits/aiCharts/Base/ChartSeries;

    invoke-virtual {p0, p1}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->setBaseAttributes(Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;)V

    return-void
.end method

.method public final setX(D)V
    .locals 2

    iget-wide v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPoint;->a:D

    cmpl-double v0, v0, p1

    if-eqz v0, :cond_0

    iput-wide p1, p0, Lcom/artfulbits/aiCharts/Base/ChartPoint;->a:D

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPoint;->c:Lcom/artfulbits/aiCharts/Base/ChartSeries;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPoint;->c:Lcom/artfulbits/aiCharts/Base/ChartSeries;

    invoke-virtual {v0, p0, p0}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->onPointsChanged(Lcom/artfulbits/aiCharts/Base/ChartPoint;Lcom/artfulbits/aiCharts/Base/ChartPoint;)V

    :cond_0
    return-void
.end method

.method public final setY(D)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPoint;->b:[D

    array-length v0, v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPoint;->b:[D

    aput-wide p1, v0, v2

    :goto_0
    invoke-virtual {p0, v1, p0, p0}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->onChanged(ILjava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_0
    new-array v0, v1, [D

    aput-wide p1, v0, v2

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPoint;->b:[D

    goto :goto_0
.end method

.method public final varargs setY([D)V
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPoint;->b:[D

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([D[D)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartPoint;->b:[D

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p0, p0}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->onChanged(ILjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getFormatedLabel()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
