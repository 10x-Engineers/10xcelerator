class c_670_1;
    integer i = -110;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_670_1;
    c_670_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z1x1z11001z111xx0z1x0z11xxzz111zzxzxxxzzxxxxzzxzzxzxxxzxxzzxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
