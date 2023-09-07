class c_3334_1;
    integer i = -554;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3334_1;
    c_3334_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1xz1z000zx0010xz0z000x00zzx110xzzxxxzxxzxxzzzzxxxxzzxxxxzxzzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
