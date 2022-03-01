.class final Lcom/artfulbits/aiCharts/Base/r;
.super Ljava/lang/Object;


# instance fields
.field private final a:[Ljava/lang/String;

.field private final b:Landroid/text/TextPaint;

.field private final c:Landroid/text/TextPaint;

.field private final d:F


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 6

    const/16 v5, 0xa0

    const/16 v4, 0xff

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v2, "\n"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/artfulbits/aiCharts/Base/r;->a:[Ljava/lang/String;

    new-instance v2, Landroid/text/TextPaint;

    invoke-direct {v2}, Landroid/text/TextPaint;-><init>()V

    iput-object v2, p0, Lcom/artfulbits/aiCharts/Base/r;->b:Landroid/text/TextPaint;

    iget-object v2, p0, Lcom/artfulbits/aiCharts/Base/r;->b:Landroid/text/TextPaint;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    iget-object v2, p0, Lcom/artfulbits/aiCharts/Base/r;->b:Landroid/text/TextPaint;

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v2, p0, Lcom/artfulbits/aiCharts/Base/r;->b:Landroid/text/TextPaint;

    invoke-static {v5, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setColor(I)V

    iget-object v2, p0, Lcom/artfulbits/aiCharts/Base/r;->b:Landroid/text/TextPaint;

    sget-object v3, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    new-instance v2, Landroid/text/TextPaint;

    iget-object v3, p0, Lcom/artfulbits/aiCharts/Base/r;->b:Landroid/text/TextPaint;

    invoke-direct {v2, v3}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    iput-object v2, p0, Lcom/artfulbits/aiCharts/Base/r;->c:Landroid/text/TextPaint;

    iget-object v2, p0, Lcom/artfulbits/aiCharts/Base/r;->c:Landroid/text/TextPaint;

    invoke-static {v5, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setColor(I)V

    iget-object v2, p0, Lcom/artfulbits/aiCharts/Base/r;->c:Landroid/text/TextPaint;

    const/high16 v3, 0x40000000    # 2.0f

    const/high16 v4, -0x1000000

    invoke-virtual {v2, v3, v1, v1, v4}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    :goto_0
    iget-object v2, p0, Lcom/artfulbits/aiCharts/Base/r;->a:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/artfulbits/aiCharts/Base/r;->c:Landroid/text/TextPaint;

    iget-object v3, p0, Lcom/artfulbits/aiCharts/Base/r;->a:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput v1, p0, Lcom/artfulbits/aiCharts/Base/r;->d:F

    return-void
.end method

.method public static final a(Lcom/artfulbits/license/LicenseData;)Lcom/artfulbits/aiCharts/Base/r;
    .locals 4

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez p0, :cond_0

    const-string v0, "aiCharts"

    const-string v1, "License file is invalid or missing. \nPlease place proper license.lic to /assets folder."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/artfulbits/aiCharts/Base/r;

    const-string v1, "License file is invalid or missing. \nPlease place proper license.lic to /assets folder."

    invoke-direct {v0, v1}, Lcom/artfulbits/aiCharts/Base/r;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/artfulbits/license/LicenseData;->isValid()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/text/MessageFormat;

    const-string v1, "License trial period has expired {0, date, MMM dd, yyyy}. Please update license."

    invoke-direct {v0, v1}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;)V

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/artfulbits/license/LicenseData;->getExpirationDate()Ljava/util/Date;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Ljava/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "aiCharts"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/artfulbits/aiCharts/Base/r;

    invoke-direct {v0, v1}, Lcom/artfulbits/aiCharts/Base/r;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "Subscription"

    invoke-virtual {p0}, Lcom/artfulbits/license/LicenseData;->getLicenceType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/text/MessageFormat;

    const-string v1, "aiCharts is running with subscription license.\nContact sales@artfulbits.com for purchase.\nExpire date {0, date, MMM dd, yyyy}"

    invoke-direct {v0, v1}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;)V

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/artfulbits/license/LicenseData;->getExpirationDate()Ljava/util/Date;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Ljava/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "aiCharts"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    const-string v0, "Trial"

    invoke-virtual {p0}, Lcom/artfulbits/license/LicenseData;->getLicenceType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/text/MessageFormat;

    const-string v1, "aiCharts is running with trial license.\nContact sales@artfulbits.com for purchase.\nExpire date {0, date, MMM dd, yyyy}"

    invoke-direct {v0, v1}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;)V

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/artfulbits/license/LicenseData;->getExpirationDate()Ljava/util/Date;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Ljava/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "aiCharts"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/artfulbits/aiCharts/Base/r;

    invoke-direct {v0, v1}, Lcom/artfulbits/aiCharts/Base/r;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 9

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {p2}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v2, v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/r;->c:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->getTextSize()F

    move-result v3

    const v1, 0x3f666666    # 0.9f

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v1, v4

    iget v4, p0, Lcom/artfulbits/aiCharts/Base/r;->d:F

    div-float/2addr v1, v4

    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->save(I)I

    invoke-virtual {p1, v1, v1, v2, v0}, Landroid/graphics/Canvas;->scale(FFFF)V

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/r;->a:[Ljava/lang/String;

    array-length v1, v1

    int-to-float v1, v1

    mul-float/2addr v1, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v1, v4

    sub-float/2addr v0, v1

    const/4 v1, 0x0

    :goto_0
    iget-object v4, p0, Lcom/artfulbits/aiCharts/Base/r;->a:[Ljava/lang/String;

    array-length v4, v4

    if-ge v1, v4, :cond_0

    iget-object v4, p0, Lcom/artfulbits/aiCharts/Base/r;->a:[Ljava/lang/String;

    aget-object v4, v4, v1

    iget-object v5, p0, Lcom/artfulbits/aiCharts/Base/r;->c:Landroid/text/TextPaint;

    invoke-virtual {p1, v4, v2, v0, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v4, p0, Lcom/artfulbits/aiCharts/Base/r;->a:[Ljava/lang/String;

    aget-object v4, v4, v1

    add-float v5, v2, v8

    add-float v6, v0, v8

    iget-object v7, p0, Lcom/artfulbits/aiCharts/Base/r;->b:Landroid/text/TextPaint;

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-float/2addr v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method
