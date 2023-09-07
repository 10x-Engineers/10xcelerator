class c_2766_1;
    integer i = -459;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2766_1;
    c_2766_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xx11x1x11xz1zz010xxz1x11x001xx0zzzxzzxzxxzxxxzxxxzxxzzzzxxxzzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
