.class public final enum Lcom/artfulbits/aiCharts/Base/ChartAxis$ValueType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/artfulbits/aiCharts/Base/ChartAxis;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ValueType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/artfulbits/aiCharts/Base/ChartAxis$ValueType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Date:Lcom/artfulbits/aiCharts/Base/ChartAxis$ValueType;

.field public static final enum Double:Lcom/artfulbits/aiCharts/Base/ChartAxis$ValueType;

.field private static final synthetic a:[Lcom/artfulbits/aiCharts/Base/ChartAxis$ValueType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/artfulbits/aiCharts/Base/ChartAxis$ValueType;

    const-string v1, "Double"

    invoke-direct {v0, v1, v2}, Lcom/artfulbits/aiCharts/Base/ChartAxis$ValueType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/artfulbits/aiCharts/Base/ChartAxis$ValueType;->Double:Lcom/artfulbits/aiCharts/Base/ChartAxis$ValueType;

    new-instance v0, Lcom/artfulbits/aiCharts/Base/ChartAxis$ValueType;

    const-string v1, "Date"

    invoke-direct {v0, v1, v3}, Lcom/artfulbits/aiCharts/Base/ChartAxis$ValueType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/artfulbits/aiCharts/Base/ChartAxis$ValueType;->Date:Lcom/artfulbits/aiCharts/Base/ChartAxis$ValueType;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/artfulbits/aiCharts/Base/ChartAxis$ValueType;

    sget-object v1, Lcom/artfulbits/aiCharts/Base/ChartAxis$ValueType;->Double:Lcom/artfulbits/aiCharts/Base/ChartAxis$ValueType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/artfulbits/aiCharts/Base/ChartAxis$ValueType;->Date:Lcom/artfulbits/aiCharts/Base/ChartAxis$ValueType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/artfulbits/aiCharts/Base/ChartAxis$ValueType;->a:[Lcom/artfulbits/aiCharts/Base/ChartAxis$ValueType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/artfulbits/aiCharts/Base/ChartAxis$ValueType;
    .locals 1

    const-class v0, Lcom/artfulbits/aiCharts/Base/ChartAxis$ValueType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/artfulbits/aiCharts/Base/ChartAxis$ValueType;

    return-object v0
.end method

.method public static values()[Lcom/artfulbits/aiCharts/Base/ChartAxis$ValueType;
    .locals 1

    sget-object v0, Lcom/artfulbits/aiCharts/Base/ChartAxis$ValueType;->a:[Lcom/artfulbits/aiCharts/Base/ChartAxis$ValueType;

    invoke-virtual {v0}, [Lcom/artfulbits/aiCharts/Base/ChartAxis$ValueType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/artfulbits/aiCharts/Base/ChartAxis$ValueType;

    return-object v0
.end method
