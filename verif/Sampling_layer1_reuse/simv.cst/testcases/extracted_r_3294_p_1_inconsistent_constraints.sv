class c_3294_1;
    integer i = -547;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3294_1;
    c_3294_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "011011110zx1x0x011xz10zxx10zxxxxxxxxxzzxzzxzzxzxxxxxxzxxzxzxxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
