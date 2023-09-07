class c_128_1;
    integer i = -20;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_128_1;
    c_128_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1zx1010xxx000x1xz10z1xx00zxxxx00zzzxzxzxzxxxzxzzzzxxzxxxzzxzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
