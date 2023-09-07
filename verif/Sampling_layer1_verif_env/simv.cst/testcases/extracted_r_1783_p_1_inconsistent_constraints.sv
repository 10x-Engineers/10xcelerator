class c_1783_1;
    integer i = -296;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1783_1;
    c_1783_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zx00zxx11xz1001xxxxxxz011x10xz0xzzxzxzxxzzzxxxxxxxzzxxxzxzxzxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
