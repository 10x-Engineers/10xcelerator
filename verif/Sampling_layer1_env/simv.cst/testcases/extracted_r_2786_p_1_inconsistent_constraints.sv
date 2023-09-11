class c_2786_1;
    integer i = -463;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2786_1;
    c_2786_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0z1xxz0xz1x10xxx010x0zx10xx011x0xxxzzxzxzzxzzxxxxxzxxxzzxxxxzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
