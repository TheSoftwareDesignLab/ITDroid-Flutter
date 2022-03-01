.class public abstract Lcom/artfulbits/aiCharts/Annotations/ChartAnnotation;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/artfulbits/aiCharts/Annotations/ChartAnnotationPosition;

.field protected m_description:Ljava/lang/String;

.field protected m_offset:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract draw(Landroid/graphics/Canvas;Lcom/artfulbits/aiCharts/Base/ChartEngine;)V
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Annotations/ChartAnnotation;->m_description:Ljava/lang/String;

    return-object v0
.end method

.method public getOffset()I
    .locals 1

    iget v0, p0, Lcom/artfulbits/aiCharts/Annotations/ChartAnnotation;->m_offset:I

    return v0
.end method

.method public getPosition()Lcom/artfulbits/aiCharts/Annotations/ChartAnnotationPosition;
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Annotations/ChartAnnotation;->a:Lcom/artfulbits/aiCharts/Annotations/ChartAnnotationPosition;

    return-object v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Annotations/ChartAnnotation;->m_description:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Annotations/ChartAnnotation;->m_description:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/artfulbits/aiCharts/Annotations/ChartAnnotation;->m_description:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setOffset(I)V
    .locals 1

    iget v0, p0, Lcom/artfulbits/aiCharts/Annotations/ChartAnnotation;->m_offset:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/artfulbits/aiCharts/Annotations/ChartAnnotation;->m_offset:I

    :cond_0
    return-void
.end method

.method public setPosition(Lcom/artfulbits/aiCharts/Annotations/ChartAnnotationPosition;)V
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Annotations/ChartAnnotation;->a:Lcom/artfulbits/aiCharts/Annotations/ChartAnnotationPosition;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/artfulbits/aiCharts/Annotations/ChartAnnotation;->a:Lcom/artfulbits/aiCharts/Annotations/ChartAnnotationPosition;

    :cond_0
    return-void
.end method
