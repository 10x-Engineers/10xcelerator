class c_2323_1;
    integer i = -386;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2323_1;
    c_2323_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xxxzx0x000x0z1xx001zx1000x010xz0xzzxzzzzxxxzzzzzxxxxzzxxxxxzzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
