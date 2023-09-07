class c_2961_1;
    integer i = -492;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2961_1;
    c_2961_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1x10z101x0xz10x11zxx10xzxz1zxz1xzxzzzzzxzzxzxxzxxxzzxzxzxxxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
