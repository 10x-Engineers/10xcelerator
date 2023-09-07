class c_2963_1;
    integer i = -492;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2963_1;
    c_2963_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10z10z1z0xz0z11xx011x00z0x11z1xxxzzxxxzxxzxxxzxzxxzxxxxzzxxzxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
