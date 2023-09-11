class c_3298_1;
    integer i = -548;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3298_1;
    c_3298_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0z0x11xz010zx011x10101x1x0xx0xxxxxxzzzzzzxzzxzzzzxxxzzxzzzzzxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
