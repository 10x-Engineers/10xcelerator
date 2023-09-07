class c_1442_1;
    integer i = -239;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1442_1;
    c_1442_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x00100xz0z0zzz1001z010z0xx010z1xzzzzxzxxzzxxxxxxzxzxxxzxzzxxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
