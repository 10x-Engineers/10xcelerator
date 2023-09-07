class c_394_1;
    integer i = -64;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_394_1;
    c_394_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zxzx00xx01zx0z0zzzx1zx100xz0xx00zzzxxxzxxzzzxxzzxzzzzzzzxzxxxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
