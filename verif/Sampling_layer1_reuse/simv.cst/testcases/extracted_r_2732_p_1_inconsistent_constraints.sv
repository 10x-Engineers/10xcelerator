class c_2732_1;
    integer i = -454;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2732_1;
    c_2732_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xzx011001zzx1xzzzzxxxzxz11z1zz00zzxzxzzxzxzzxzxxzzxzxzxxxxzzxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
