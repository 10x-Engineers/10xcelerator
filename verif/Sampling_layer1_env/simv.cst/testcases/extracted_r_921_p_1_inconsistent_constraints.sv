class c_921_1;
    integer i = -152;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_921_1;
    c_921_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z011zx0z1101001010zz10z0x1x11x0zzzzxxzzzzzxxxxzxxxzxzzxxxxzzzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
