class c_2849_1;
    integer i = -473;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2849_1;
    c_2849_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11zz1xz000zzx00xzxzzxx1zz11x0z10xzzzzzxzxzzxzzzxxxxxzxzxxxzzzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
