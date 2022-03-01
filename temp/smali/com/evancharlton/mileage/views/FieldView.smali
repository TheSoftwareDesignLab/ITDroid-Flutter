.class public Lcom/evancharlton/mileage/views/FieldView;
.super Landroid/widget/EditText;
.source "FieldView.java"


# instance fields
.field private mFieldId:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 12
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 9
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/evancharlton/mileage/views/FieldView;->mFieldId:J

    .line 13
    return-void
.end method


# virtual methods
.method public getFieldId()J
    .locals 2

    .prologue
    .line 20
    iget-wide v0, p0, Lcom/evancharlton/mileage/views/FieldView;->mFieldId:J

    return-wide v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 3

    .prologue
    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fieldView_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/evancharlton/mileage/views/FieldView;->getFieldId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setFieldId(J)V
    .locals 0
    .param p1, "id"    # J

    .prologue
    .line 16
    iput-wide p1, p0, Lcom/evancharlton/mileage/views/FieldView;->mFieldId:J

    .line 17
    return-void
.end method
