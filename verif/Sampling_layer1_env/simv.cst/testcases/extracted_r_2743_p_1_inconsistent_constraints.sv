class c_2743_1;
    integer i = -456;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2743_1;
    c_2743_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0x011zz10x0x0zzz1z0010001zx0z001zxxxzxxxzxzzzzxzzzzxzzzzzxxxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
