class c_2953_1;
    integer i = -491;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2953_1;
    c_2953_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xxxzzzx1x0zzz0xxx11xz0110100zx10zxxzzzzzxxxzzxxzzxzzzzxxzxzzxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
