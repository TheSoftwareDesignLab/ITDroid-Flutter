.class public Lcom/artfulbits/aiCharts/ChartView;
.super Landroid/view/View;


# static fields
.field public static final PANNING_BOTH:I = 0x7

.field public static final PANNING_HORIZONTAL:I = 0x6

.field public static final PANNING_NONE:I = 0x0

.field public static final PANNING_VERTICAL:I = 0x5


# instance fields
.field private a:Landroid/view/GestureDetector;

.field private b:Lcom/artfulbits/aiCharts/ChartGestureListener;

.field private c:Lcom/artfulbits/aiCharts/Base/ChartEngine;

.field private final d:Lcom/artfulbits/aiCharts/Base/IInvalidateListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/artfulbits/aiCharts/ChartView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/artfulbits/aiCharts/ChartView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/artfulbits/aiCharts/ChartView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/artfulbits/aiCharts/ChartView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v1, p0, Lcom/artfulbits/aiCharts/ChartView;->c:Lcom/artfulbits/aiCharts/Base/ChartEngine;

    new-instance v0, Lcom/artfulbits/aiCharts/a;

    invoke-direct {v0, p0}, Lcom/artfulbits/aiCharts/a;-><init>(Lcom/artfulbits/aiCharts/ChartView;)V

    iput-object v0, p0, Lcom/artfulbits/aiCharts/ChartView;->d:Lcom/artfulbits/aiCharts/Base/IInvalidateListener;

    if-eqz p2, :cond_0

    const-string v0, "chart"

    invoke-interface {p2, v1, v0, p4}, Landroid/util/AttributeSet;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p4

    :cond_0
    const/4 v0, -0x1

    if-eq p4, v0, :cond_1

    invoke-virtual {p0, p4}, Lcom/artfulbits/aiCharts/ChartView;->setChart(I)V

    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/artfulbits/aiCharts/Base/ChartEngine;

    invoke-direct {v0}, Lcom/artfulbits/aiCharts/Base/ChartEngine;-><init>()V

    invoke-virtual {p0, v0}, Lcom/artfulbits/aiCharts/ChartView;->setChart(Lcom/artfulbits/aiCharts/Base/ChartEngine;)V

    goto :goto_0
.end method


# virtual methods
.method public addArea()Lcom/artfulbits/aiCharts/Base/ChartArea;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/artfulbits/aiCharts/ChartView;->c:Lcom/artfulbits/aiCharts/Base/ChartEngine;

    if-eqz v1, :cond_0

    new-instance v0, Lcom/artfulbits/aiCharts/Base/ChartArea;

    invoke-direct {v0}, Lcom/artfulbits/aiCharts/Base/ChartArea;-><init>()V

    iget-object v1, p0, Lcom/artfulbits/aiCharts/ChartView;->c:Lcom/artfulbits/aiCharts/Base/ChartEngine;

    invoke-virtual {v1}, Lcom/artfulbits/aiCharts/Base/ChartEngine;->getAreas()Lcom/artfulbits/aiCharts/Base/ChartNamedCollection;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/artfulbits/aiCharts/Base/ChartNamedCollection;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v0
.end method

.method public getAnnotations()Lcom/artfulbits/aiCharts/Base/ChartCollection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/artfulbits/aiCharts/Base/ChartCollection",
            "<",
            "Lcom/artfulbits/aiCharts/Annotations/ChartAnnotation;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/artfulbits/aiCharts/ChartView;->c:Lcom/artfulbits/aiCharts/Base/ChartEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/artfulbits/aiCharts/ChartView;->c:Lcom/artfulbits/aiCharts/Base/ChartEngine;

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartEngine;->getAnnotations()Lcom/artfulbits/aiCharts/Base/ChartCollection;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAreas()Lcom/artfulbits/aiCharts/Base/ChartNamedCollection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/artfulbits/aiCharts/Base/ChartNamedCollection",
            "<",
            "Lcom/artfulbits/aiCharts/Base/ChartArea;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/artfulbits/aiCharts/ChartView;->c:Lcom/artfulbits/aiCharts/Base/ChartEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/artfulbits/aiCharts/ChartView;->c:Lcom/artfulbits/aiCharts/Base/ChartEngine;

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartEngine;->getAreas()Lcom/artfulbits/aiCharts/Base/ChartNamedCollection;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getChart()Lcom/artfulbits/aiCharts/Base/ChartEngine;
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/ChartView;->c:Lcom/artfulbits/aiCharts/Base/ChartEngine;

    return-object v0
.end method

.method public getGestureDetector()Landroid/view/GestureDetector;
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/ChartView;->a:Landroid/view/GestureDetector;

    return-object v0
.end method

.method public getLegends()Lcom/artfulbits/aiCharts/Base/ChartNamedCollection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/artfulbits/aiCharts/Base/ChartNamedCollection",
            "<",
            "Lcom/artfulbits/aiCharts/Base/ChartLegend;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/artfulbits/aiCharts/ChartView;->c:Lcom/artfulbits/aiCharts/Base/ChartEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/artfulbits/aiCharts/ChartView;->c:Lcom/artfulbits/aiCharts/Base/ChartEngine;

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartEngine;->getLegends()Lcom/artfulbits/aiCharts/Base/ChartNamedCollection;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPalette()Lcom/artfulbits/aiCharts/Base/ChartPalette;
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/ChartView;->c:Lcom/artfulbits/aiCharts/Base/ChartEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/artfulbits/aiCharts/ChartView;->c:Lcom/artfulbits/aiCharts/Base/ChartEngine;

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartEngine;->getPalette()Lcom/artfulbits/aiCharts/Base/ChartPalette;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSeries()Lcom/artfulbits/aiCharts/Base/ChartNamedCollection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/artfulbits/aiCharts/Base/ChartNamedCollection",
            "<",
            "Lcom/artfulbits/aiCharts/Base/ChartSeries;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/artfulbits/aiCharts/ChartView;->c:Lcom/artfulbits/aiCharts/Base/ChartEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/artfulbits/aiCharts/ChartView;->c:Lcom/artfulbits/aiCharts/Base/ChartEngine;

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartEngine;->getSeries()Lcom/artfulbits/aiCharts/Base/ChartNamedCollection;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTitles()Lcom/artfulbits/aiCharts/Base/ChartCollection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/artfulbits/aiCharts/Base/ChartCollection",
            "<",
            "Lcom/artfulbits/aiCharts/Base/ChartTitle;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/artfulbits/aiCharts/ChartView;->c:Lcom/artfulbits/aiCharts/Base/ChartEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/artfulbits/aiCharts/ChartView;->c:Lcom/artfulbits/aiCharts/Base/ChartEngine;

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartEngine;->getTitles()Lcom/artfulbits/aiCharts/Base/ChartCollection;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hitTest(II)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/artfulbits/aiCharts/ChartView;->c:Lcom/artfulbits/aiCharts/Base/ChartEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/artfulbits/aiCharts/ChartView;->c:Lcom/artfulbits/aiCharts/Base/ChartEngine;

    invoke-virtual {v0, p1, p2}, Lcom/artfulbits/aiCharts/Base/ChartEngine;->hitTest(II)Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHitTestEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/ChartView;->c:Lcom/artfulbits/aiCharts/Base/ChartEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/artfulbits/aiCharts/ChartView;->c:Lcom/artfulbits/aiCharts/Base/ChartEngine;

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartEngine;->isHitTestEnabled()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/ChartView;->c:Lcom/artfulbits/aiCharts/Base/ChartEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/artfulbits/aiCharts/ChartView;->c:Lcom/artfulbits/aiCharts/Base/ChartEngine;

    invoke-virtual {v0, p1}, Lcom/artfulbits/aiCharts/Base/ChartEngine;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 5

    iget-object v0, p0, Lcom/artfulbits/aiCharts/ChartView;->c:Lcom/artfulbits/aiCharts/Base/ChartEngine;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/artfulbits/aiCharts/ChartView;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/artfulbits/aiCharts/ChartView;->getPaddingTop()I

    move-result v1

    sub-int v2, p4, p2

    invoke-virtual {p0}, Lcom/artfulbits/aiCharts/ChartView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    sub-int v3, p5, p3

    invoke-virtual {p0}, Lcom/artfulbits/aiCharts/ChartView;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/artfulbits/aiCharts/ChartView;->c:Lcom/artfulbits/aiCharts/Base/ChartEngine;

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/artfulbits/aiCharts/Base/ChartEngine;->setBounds(IIII)V

    :cond_0
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/ChartView;->a:Landroid/view/GestureDetector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/artfulbits/aiCharts/ChartView;->a:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public setChart(I)V
    .locals 3

    invoke-virtual {p0}, Lcom/artfulbits/aiCharts/ChartView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    new-instance v2, Lcom/artfulbits/aiCharts/Base/ChartEngine;

    invoke-direct {v2, v0, v1}, Lcom/artfulbits/aiCharts/Base/ChartEngine;-><init>(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;)V

    invoke-virtual {p0, v2}, Lcom/artfulbits/aiCharts/ChartView;->setChart(Lcom/artfulbits/aiCharts/Base/ChartEngine;)V

    return-void
.end method

.method public setChart(Lcom/artfulbits/aiCharts/Base/ChartEngine;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "chart"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/artfulbits/aiCharts/ChartView;->c:Lcom/artfulbits/aiCharts/Base/ChartEngine;

    if-eq v0, p1, :cond_3

    iget-object v0, p0, Lcom/artfulbits/aiCharts/ChartView;->c:Lcom/artfulbits/aiCharts/Base/ChartEngine;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/ChartView;->c:Lcom/artfulbits/aiCharts/Base/ChartEngine;

    iget-object v1, p0, Lcom/artfulbits/aiCharts/ChartView;->d:Lcom/artfulbits/aiCharts/Base/IInvalidateListener;

    invoke-virtual {v0, v1}, Lcom/artfulbits/aiCharts/Base/ChartEngine;->removeInvalidateListener(Lcom/artfulbits/aiCharts/Base/IInvalidateListener;)V

    :cond_1
    iput-object p1, p0, Lcom/artfulbits/aiCharts/ChartView;->c:Lcom/artfulbits/aiCharts/Base/ChartEngine;

    iget-object v0, p0, Lcom/artfulbits/aiCharts/ChartView;->c:Lcom/artfulbits/aiCharts/Base/ChartEngine;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/artfulbits/aiCharts/ChartView;->c:Lcom/artfulbits/aiCharts/Base/ChartEngine;

    iget-object v1, p0, Lcom/artfulbits/aiCharts/ChartView;->d:Lcom/artfulbits/aiCharts/Base/IInvalidateListener;

    invoke-virtual {v0, v1}, Lcom/artfulbits/aiCharts/Base/ChartEngine;->addInvalidateListener(Lcom/artfulbits/aiCharts/Base/IInvalidateListener;)V

    :cond_2
    invoke-virtual {p0}, Lcom/artfulbits/aiCharts/ChartView;->requestLayout()V

    :cond_3
    return-void
.end method

.method public setGestureDetector(Landroid/view/GestureDetector$OnGestureListener;)V
    .locals 2

    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/artfulbits/aiCharts/ChartView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/artfulbits/aiCharts/ChartView;->a:Landroid/view/GestureDetector;

    return-void
.end method

.method public setGestureDetector(Landroid/view/GestureDetector;)V
    .locals 0

    iput-object p1, p0, Lcom/artfulbits/aiCharts/ChartView;->a:Landroid/view/GestureDetector;

    return-void
.end method

.method public setHitTestEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/ChartView;->c:Lcom/artfulbits/aiCharts/Base/ChartEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/artfulbits/aiCharts/ChartView;->c:Lcom/artfulbits/aiCharts/Base/ChartEngine;

    invoke-virtual {v0, p1}, Lcom/artfulbits/aiCharts/Base/ChartEngine;->setHitTestEnabled(Z)V

    :cond_0
    return-void
.end method

.method public setPalette(Lcom/artfulbits/aiCharts/Base/ChartPalette;)V
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/ChartView;->c:Lcom/artfulbits/aiCharts/Base/ChartEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/artfulbits/aiCharts/ChartView;->c:Lcom/artfulbits/aiCharts/Base/ChartEngine;

    invoke-virtual {v0, p1}, Lcom/artfulbits/aiCharts/Base/ChartEngine;->setPalette(Lcom/artfulbits/aiCharts/Base/ChartPalette;)V

    :cond_0
    return-void
.end method

.method public setPanning(I)V
    .locals 3

    iget-object v0, p0, Lcom/artfulbits/aiCharts/ChartView;->a:Landroid/view/GestureDetector;

    if-nez v0, :cond_0

    new-instance v0, Lcom/artfulbits/aiCharts/ChartGestureListener;

    invoke-direct {v0, p0}, Lcom/artfulbits/aiCharts/ChartGestureListener;-><init>(Lcom/artfulbits/aiCharts/ChartView;)V

    iput-object v0, p0, Lcom/artfulbits/aiCharts/ChartView;->b:Lcom/artfulbits/aiCharts/ChartGestureListener;

    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/artfulbits/aiCharts/ChartView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/artfulbits/aiCharts/ChartView;->b:Lcom/artfulbits/aiCharts/ChartGestureListener;

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/artfulbits/aiCharts/ChartView;->a:Landroid/view/GestureDetector;

    :cond_0
    iget-object v0, p0, Lcom/artfulbits/aiCharts/ChartView;->b:Lcom/artfulbits/aiCharts/ChartGestureListener;

    invoke-virtual {v0, p1}, Lcom/artfulbits/aiCharts/ChartGestureListener;->setFlags(I)V

    return-void
.end method
