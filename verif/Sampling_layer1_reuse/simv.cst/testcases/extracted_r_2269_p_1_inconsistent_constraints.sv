class c_2269_1;
    integer i = -377;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2269_1;
    c_2269_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00z11001zzxzz1100zxz00z11x11x1xzzxzzxxxxzzxzzzxxxzzxxzxzzxxxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
