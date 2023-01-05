.class public Lcom/evancharlton/mileage/views/DateDelta;
.super Lcom/evancharlton/mileage/views/DeltaView;
.source "DateDelta.java"


# static fields
.field private static final ONE_DAY:J = 0x5265c00L

.field private static final TEXT:[Ljava/lang/String;

.field private static final VALUES:[J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const/4 v0, 0x4

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/evancharlton/mileage/views/DateDelta;->VALUES:[J

    .line 18
    sget-object v0, Lcom/evancharlton/mileage/views/DateDelta;->VALUES:[J

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/evancharlton/mileage/views/DateDelta;->TEXT:[Ljava/lang/String;

    return-void

    .line 12
    :array_0
    .array-data 8
        0x5265c00
        0x240c8400
        0x9a7ec800L
        0x757b12c00L
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/evancharlton/mileage/views/DeltaView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    sget-object v0, Lcom/evancharlton/mileage/views/DateDelta;->TEXT:[Ljava/lang/String;

    const/4 v1, 0x0

    const v2, 0x7f070037

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 24
    sget-object v0, Lcom/evancharlton/mileage/views/DateDelta;->TEXT:[Ljava/lang/String;

    const/4 v1, 0x1

    const v2, 0x7f070038

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 25
    sget-object v0, Lcom/evancharlton/mileage/views/DateDelta;->TEXT:[Ljava/lang/String;

    const/4 v1, 0x2

    const v2, 0x7f070039

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 26
    sget-object v0, Lcom/evancharlton/mileage/views/DateDelta;->TEXT:[Ljava/lang/String;

    const/4 v1, 0x3

    const v2, 0x7f07003a

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 27
    return-void
.end method


# virtual methods
.method protected getPosition(J)I
    .locals 4
    .param p1, "delta"    # J

    .prologue
    .line 31
    const-wide/32 v2, 0x5265c00

    div-long v2, p1, v2

    long-to-int v0, v2

    .line 32
    .local v0, "numDays":I
    const/4 v1, 0x0

    .line 33
    .local v1, "position":I
    sparse-switch v0, :sswitch_data_0

    .line 47
    :goto_0
    return v1

    .line 35
    :sswitch_0
    const/4 v1, 0x0

    .line 36
    goto :goto_0

    .line 38
    :sswitch_1
    const/4 v1, 0x1

    .line 39
    goto :goto_0

    .line 41
    :sswitch_2
    const/4 v1, 0x2

    .line 42
    goto :goto_0

    .line 44
    :sswitch_3
    const/4 v1, 0x3

    goto :goto_0

    .line 33
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x7 -> :sswitch_1
        0x1e -> :sswitch_2
        0x16d -> :sswitch_3
    .end sparse-switch
.end method

.method protected getTexts()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/evancharlton/mileage/views/DateDelta;->TEXT:[Ljava/lang/String;

    return-object v0
.end method

.method protected getValues()[J
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/evancharlton/mileage/views/DateDelta;->VALUES:[J

    return-object v0
.end method
