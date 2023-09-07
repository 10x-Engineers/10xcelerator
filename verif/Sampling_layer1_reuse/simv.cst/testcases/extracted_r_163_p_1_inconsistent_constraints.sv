class c_163_1;
    integer i = -26;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_163_1;
    c_163_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x011z001xz11z1z000101z1x11xz0111zzzxxxzxzzxzxzzzzxxxxxxxxxxzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
