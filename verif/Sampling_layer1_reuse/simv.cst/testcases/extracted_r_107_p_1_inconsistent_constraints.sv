class c_107_1;
    integer i = -16;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_107_1;
    c_107_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1x011011011x010z011z0010zx00z101zxxzxxxzzzxxzxzzxxxxzzxxxzzzzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
