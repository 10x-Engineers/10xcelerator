class c_2460_1;
    integer i = -408;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2460_1;
    c_2460_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzz1z01zx011z0z0z011x1zzxz110xx1zxzxxxzzxxxzzxzzxxzxzzxzxxxzzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
