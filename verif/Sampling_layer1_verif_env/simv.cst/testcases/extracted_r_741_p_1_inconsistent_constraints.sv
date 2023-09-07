class c_741_1;
    integer i = -122;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_741_1;
    c_741_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x000xx11101z1001z010xxzzxx0x0010zxxzxxxxxxzxzzxxzxzxzxzxxzxzzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
