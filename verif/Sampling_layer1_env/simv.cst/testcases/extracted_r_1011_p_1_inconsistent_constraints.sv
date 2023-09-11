class c_1011_1;
    integer i = -167;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1011_1;
    c_1011_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z1x111zxzz01zz0x01xx1zzx101zz0xxzxxxzxzxxzzzzzxxxzxzzxxzxzzxxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
