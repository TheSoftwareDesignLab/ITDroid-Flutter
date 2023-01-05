.class final Lcom/artfulbits/license/LicenseData$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/artfulbits/license/LicenseData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private final a:[B

.field private b:I


# direct methods
.method public constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/artfulbits/license/LicenseData$a;->a:[B

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 7

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/artfulbits/license/LicenseData$a;->a:[B

    iget v2, p0, Lcom/artfulbits/license/LicenseData$a;->b:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/artfulbits/license/LicenseData$a;->b:I

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    or-int/lit8 v0, v0, 0x0

    iget-object v2, p0, Lcom/artfulbits/license/LicenseData$a;->a:[B

    iget v3, p0, Lcom/artfulbits/license/LicenseData$a;->b:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/artfulbits/license/LicenseData$a;->b:I

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v0, v2

    iget-object v2, p0, Lcom/artfulbits/license/LicenseData$a;->a:[B

    iget v3, p0, Lcom/artfulbits/license/LicenseData$a;->b:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/artfulbits/license/LicenseData$a;->b:I

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v0, v2

    iget-object v2, p0, Lcom/artfulbits/license/LicenseData$a;->a:[B

    iget v3, p0, Lcom/artfulbits/license/LicenseData$a;->b:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/artfulbits/license/LicenseData$a;->b:I

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v2, v0

    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/artfulbits/license/LicenseData$a;->a:[B

    iget v4, p0, Lcom/artfulbits/license/LicenseData$a;->b:I

    const-string v5, "US-ASCII"

    invoke-direct {v0, v3, v4, v2, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget v1, p0, Lcom/artfulbits/license/LicenseData$a;->b:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/artfulbits/license/LicenseData$a;->b:I
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    :goto_1
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public final a(I)V
    .locals 1

    iget v0, p0, Lcom/artfulbits/license/LicenseData$a;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/artfulbits/license/LicenseData$a;->b:I

    return-void
.end method

.method public final b()J
    .locals 7

    const-wide/16 v5, 0xff

    const-wide/16 v0, 0x0

    iget-object v2, p0, Lcom/artfulbits/license/LicenseData$a;->a:[B

    iget v3, p0, Lcom/artfulbits/license/LicenseData$a;->b:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/artfulbits/license/LicenseData$a;->b:I

    aget-byte v2, v2, v3

    int-to-long v2, v2

    and-long/2addr v2, v5

    const/16 v4, 0x38

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iget-object v2, p0, Lcom/artfulbits/license/LicenseData$a;->a:[B

    iget v3, p0, Lcom/artfulbits/license/LicenseData$a;->b:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/artfulbits/license/LicenseData$a;->b:I

    aget-byte v2, v2, v3

    int-to-long v2, v2

    and-long/2addr v2, v5

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iget-object v2, p0, Lcom/artfulbits/license/LicenseData$a;->a:[B

    iget v3, p0, Lcom/artfulbits/license/LicenseData$a;->b:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/artfulbits/license/LicenseData$a;->b:I

    aget-byte v2, v2, v3

    int-to-long v2, v2

    and-long/2addr v2, v5

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iget-object v2, p0, Lcom/artfulbits/license/LicenseData$a;->a:[B

    iget v3, p0, Lcom/artfulbits/license/LicenseData$a;->b:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/artfulbits/license/LicenseData$a;->b:I

    aget-byte v2, v2, v3

    int-to-long v2, v2

    and-long/2addr v2, v5

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iget-object v2, p0, Lcom/artfulbits/license/LicenseData$a;->a:[B

    iget v3, p0, Lcom/artfulbits/license/LicenseData$a;->b:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/artfulbits/license/LicenseData$a;->b:I

    aget-byte v2, v2, v3

    int-to-long v2, v2

    and-long/2addr v2, v5

    const/16 v4, 0x18

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iget-object v2, p0, Lcom/artfulbits/license/LicenseData$a;->a:[B

    iget v3, p0, Lcom/artfulbits/license/LicenseData$a;->b:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/artfulbits/license/LicenseData$a;->b:I

    aget-byte v2, v2, v3

    int-to-long v2, v2

    and-long/2addr v2, v5

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iget-object v2, p0, Lcom/artfulbits/license/LicenseData$a;->a:[B

    iget v3, p0, Lcom/artfulbits/license/LicenseData$a;->b:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/artfulbits/license/LicenseData$a;->b:I

    aget-byte v2, v2, v3

    int-to-long v2, v2

    and-long/2addr v2, v5

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iget-object v2, p0, Lcom/artfulbits/license/LicenseData$a;->a:[B

    iget v3, p0, Lcom/artfulbits/license/LicenseData$a;->b:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/artfulbits/license/LicenseData$a;->b:I

    aget-byte v2, v2, v3

    int-to-long v2, v2

    and-long/2addr v2, v5

    or-long/2addr v0, v2

    return-wide v0
.end method
