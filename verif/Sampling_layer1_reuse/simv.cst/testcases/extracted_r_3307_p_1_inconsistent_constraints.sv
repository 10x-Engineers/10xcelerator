class c_3307_1;
    integer i = -550;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3307_1;
    c_3307_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11z0zzxzx111zx1zzzxx110x0zzzxxz1xzzzzxzzxxxzzzxxzzxzxzxxxxzzzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
