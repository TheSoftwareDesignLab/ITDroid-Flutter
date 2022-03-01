.class public final Lcom/artfulbits/aiCharts/Base/ChartPalette;
.super Ljava/lang/Object;


# static fields
.field public static final Grayscale:Lcom/artfulbits/aiCharts/Base/ChartPalette;

.field public static final MSOffice:Lcom/artfulbits/aiCharts/Base/ChartPalette;

.field public static final OpenOffice:Lcom/artfulbits/aiCharts/Base/ChartPalette;

.field public static final Rainbow:Lcom/artfulbits/aiCharts/Base/ChartPalette;


# instance fields
.field private final a:[I

.field private final b:[Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/artfulbits/aiCharts/Base/ChartPalette;

    const/4 v1, 0x7

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Lcom/artfulbits/aiCharts/Base/ChartPalette;-><init>([I)V

    sput-object v0, Lcom/artfulbits/aiCharts/Base/ChartPalette;->Rainbow:Lcom/artfulbits/aiCharts/Base/ChartPalette;

    new-instance v0, Lcom/artfulbits/aiCharts/Base/ChartPalette;

    const/4 v1, 0x6

    new-array v1, v1, [I

    fill-array-data v1, :array_1

    invoke-direct {v0, v1}, Lcom/artfulbits/aiCharts/Base/ChartPalette;-><init>([I)V

    sput-object v0, Lcom/artfulbits/aiCharts/Base/ChartPalette;->OpenOffice:Lcom/artfulbits/aiCharts/Base/ChartPalette;

    new-instance v0, Lcom/artfulbits/aiCharts/Base/ChartPalette;

    const/4 v1, 0x3

    new-array v1, v1, [I

    fill-array-data v1, :array_2

    invoke-direct {v0, v1}, Lcom/artfulbits/aiCharts/Base/ChartPalette;-><init>([I)V

    sput-object v0, Lcom/artfulbits/aiCharts/Base/ChartPalette;->MSOffice:Lcom/artfulbits/aiCharts/Base/ChartPalette;

    new-instance v0, Lcom/artfulbits/aiCharts/Base/ChartPalette;

    const/4 v1, 0x4

    new-array v1, v1, [I

    fill-array-data v1, :array_3

    invoke-direct {v0, v1}, Lcom/artfulbits/aiCharts/Base/ChartPalette;-><init>([I)V

    sput-object v0, Lcom/artfulbits/aiCharts/Base/ChartPalette;->Grayscale:Lcom/artfulbits/aiCharts/Base/ChartPalette;

    return-void

    nop

    :array_0
    .array-data 4
        -0x10000
        -0x5b00
        -0x100
        -0xff8000
        -0xffff01
        -0xb4ff7e
        -0x117d12
    .end array-data

    :array_1
    .array-data 4
        -0xffba7a
        -0xbdf2
        -0x2ce0
        -0xa862e4
        -0x81ffdf
        -0x81ffdf
    .end array-data

    :array_2
    .array-data 4
        -0x666601
        -0x66cc9a
        -0x34
    .end array-data

    :array_3
    .array-data 4
        -0x5c5c5d
        -0x858586
        -0xd7d7d8
        -0xb7b7b8
    .end array-data
.end method

.method public varargs constructor <init>([I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartPalette;->a:[I

    array-length v0, p1

    new-array v0, v0, [Ljava/lang/Integer;

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPalette;->b:[Ljava/lang/Integer;

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartPalette;->b:[Ljava/lang/Integer;

    aget v2, p1, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static rangePalette(III)Lcom/artfulbits/aiCharts/Base/ChartPalette;
    .locals 15

    const/4 v1, 0x2

    move/from16 v0, p2

    if-ge v0, v1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "paletteSize"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    move/from16 v0, p2

    new-array v2, v0, [I

    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v4

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v5

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    invoke-static/range {p1 .. p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    sub-int v7, v1, v3

    invoke-static/range {p1 .. p1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    sub-int v8, v1, v4

    invoke-static/range {p1 .. p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    sub-int v9, v1, v5

    invoke-static/range {p1 .. p1}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    sub-int v10, v1, v6

    const/4 v1, 0x0

    :goto_0
    move/from16 v0, p2

    if-ge v1, v0, :cond_1

    mul-int v11, v1, v7

    div-int v11, v11, p2

    add-int/2addr v11, v3

    mul-int v12, v1, v8

    div-int v12, v12, p2

    add-int/2addr v12, v4

    mul-int v13, v1, v9

    div-int v13, v13, p2

    add-int/2addr v13, v5

    mul-int v14, v1, v10

    div-int v14, v14, p2

    add-int/2addr v14, v6

    invoke-static {v11, v12, v13, v14}, Landroid/graphics/Color;->argb(IIII)I

    move-result v11

    aput v11, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/artfulbits/aiCharts/Base/ChartPalette;

    invoke-direct {v1, v2}, Lcom/artfulbits/aiCharts/Base/ChartPalette;-><init>([I)V

    return-object v1
.end method


# virtual methods
.method final a(I)Ljava/lang/Integer;
    .locals 2

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPalette;->b:[Ljava/lang/Integer;

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartPalette;->a:[I

    array-length v1, v1

    rem-int v1, p1, v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public final getColor(I)I
    .locals 2

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPalette;->a:[I

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartPalette;->a:[I

    array-length v1, v1

    rem-int v1, p1, v1

    aget v0, v0, v1

    return v0
.end method

.method public final getSize()I
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPalette;->a:[I

    array-length v0, v0

    return v0
.end method

.method public final getValues()[I
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPalette;->a:[I

    return-object v0
.end method
