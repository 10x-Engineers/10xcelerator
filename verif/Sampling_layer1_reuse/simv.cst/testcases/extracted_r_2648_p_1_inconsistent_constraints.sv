class c_2648_1;
    integer i = -440;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2648_1;
    c_2648_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10x1zx00011z10xxx01110z1101zxxx0zxxxxzxxzzzzzzzzxzxxzxxxzzxxxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
