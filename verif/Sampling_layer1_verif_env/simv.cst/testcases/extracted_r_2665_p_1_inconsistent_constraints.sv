class c_2665_1;
    integer i = -443;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2665_1;
    c_2665_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1xx0100z0zzx1x0zx00zzxzzz011x00zzzxzzzzxxzxzzzxxzxzzxzxzzxzxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
