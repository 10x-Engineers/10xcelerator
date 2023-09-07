class c_799_1;
    integer i = -132;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_799_1;
    c_799_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z1x01xz1zz1xx1z0zxxx100z01x1xzz1xzzzzxzzxxzxxxzxxxzzxxxxzzzxzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
