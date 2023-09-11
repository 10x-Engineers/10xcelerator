class c_2244_1;
    integer i = -372;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2244_1;
    c_2244_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z110xxx0x10x1zzzzx11zxx1xz000x1zxxxxzzxxxzxxzzxxzxzzzzxxxxxzzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
