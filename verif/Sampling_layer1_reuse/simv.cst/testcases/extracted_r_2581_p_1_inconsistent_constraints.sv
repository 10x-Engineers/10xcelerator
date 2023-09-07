class c_2581_1;
    integer i = -429;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2581_1;
    c_2581_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z10zxxxxzx0x1000111x0100xxzz1101zzzxxxzxzxxxxxxzxxxxzzzxzxzzzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
